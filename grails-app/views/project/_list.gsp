<%@ page import="ru.quicker.project.Project" %>

<table>
    <thead>
    <tr>
        <th>Название</th>
    </tr>
    </thead>
    <tbody>
    <g:each in="${projects}" status="i" var="projectInstance">
        <tr>
            <td><g:link action="show" resource="${projectInstance}">${projectInstance.title}</g:link> </td>
            <td>
                <g:each in="${projectInstance.users}" var="userProjectInstance">
                    ${userProjectInstance.user.name},
                </g:each>
            </td>
        </tr>
    </g:each>
    </tbody>
</table>

